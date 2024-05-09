import { Component, OnInit, ElementRef, ViewChild } from '@angular/core';
import { ProfileServiceService } from '../../Services/profile-service.service';
import { AuthService } from '../../Services/auth.service';
import { User } from '../../Models/user';
import { NetworkService } from '../../Services/network.service';

@Component({
  selector: 'app-profile-page',
  templateUrl: './profile-page.component.html',
  styleUrl: './profile-page.component.css',
})
export class ProfilePageComponent implements OnInit {
  userDetails: any[];
  user: User;
  activeTab: string = 'overview';
  userId: number = -1;
  imageUrl: string = '';
  connections: number;

  constructor(
    private profileService: ProfileServiceService,
    private authService: AuthService,
    private networkService: NetworkService
  ) {}

  ngOnInit(): void {
    this.userId = this.authService.decodeToken();
    this.displayUserProfile(this.userId);
    this.getConnections();
  }

  getConnections() {
    this.networkService.getConnectedUsers(this.userId).subscribe({
      next: (res) => (this.connections = res.length),
      error: (err) => {},
    });
  }

  displayUserProfile(id: number): void {
    this.profileService.getUserProfile(id).subscribe({
      next: (res) => {
        this.user = {
          firstName: res.firstName,
          lastName: res.lastName,
          email: res.email,
          phone: res.phone,
          departament: res.departament,
          designation: res.designation,
          location: res.location,
          username: res.username,
          profilePicture: res.profilePicture,
        };
      },
      error: (err) => {},
    });
  }

  updateUserProfile(id: number, user: User) {
    if (id) {
      this.profileService.updateUserProfile(id, user).subscribe({
        next: (res) => {
          this.displayUserProfile(id);
        },
        error: (err) => {
        },
      });
    } else {
    }
  }

  submitForm() {
    // Check if user is valid
    if (this.userId !== -1) {
      const updatedUser: any = {
        id: this.userId,
        firstName: this.user.firstName,
        lastName: this.user.lastName,
        email: this.user.email,
        phone: this.user.phone,
        departament: this.user.departament,
        designation: this.user.designation,
        location: this.user.location,
        username: this.user.username,
        profilePicture: this.imageUrl,
      };
      this.updateUserProfile(this.userId, updatedUser);
    } else {
    }
  }

  openFileInput() {
    const fileInput = document.getElementById('fileInput') as HTMLInputElement;
    fileInput.click();
  }

  async onFileSelected(event: any) {
    const file: File = event.target.files[0];
    const formData: FormData = new FormData();
    formData.append('file', file, file.name);
    var profileUrl = await this.authService.uploadProfilePhoto(formData);
    this.imageUrl = profileUrl;
  }

  setActiveTab(tabName: string): void {
    this.activeTab = tabName;
  }
}
