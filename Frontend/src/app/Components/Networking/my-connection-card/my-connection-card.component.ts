import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { User } from '../../../Models/user';
import { Network } from '../../../Models/network';
import { NetworkService } from '../../../Services/network.service';
import { ToastrService } from 'ngx-toastr';
import { jwtDecode } from 'jwt-decode';

@Component({
  selector: 'app-my-connection-card',
  templateUrl: './my-connection-card.component.html',
  styleUrl: './my-connection-card.component.css',
})
export class MyConnectionCardComponent {
  @Input()
  user: User;
  network: Network = {
    userId: 0,
    friendId: 0,
  };
  defaultImage: string =
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  @Output() declineRequest: EventEmitter<boolean> = new EventEmitter<boolean>();

  constructor(
    private networkService: NetworkService,
    private toastr: ToastrService
  ) {}

  ngOnInit(): void {
    const token = localStorage.getItem('token');

    if (token) {
      const decodedToken: any = jwtDecode(token);
      this.network.friendId = parseInt(decodedToken.nameid);
    }
  }

  disconnectConnection(receiverId: number): void {
    this.network.userId = receiverId;
    this.networkService
      .deleteConnection(this.network)
      .subscribe((response: boolean) => {
        if (response) {
          this.declineRequest.emit(true);
          this.toastr.success('Disconnected Successfully');
        } else {
          this.toastr.error('Failed to Disconnect');
        }
      });
  }
}
