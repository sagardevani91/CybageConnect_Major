import { Injectable } from '@angular/core';
import { CanActivate, Router, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService } from '../auth.service';
import { ToastrService } from 'ngx-toastr';

@Injectable({
  providedIn: 'root',
})
export class AuthGuard implements CanActivate {
  constructor(private authService: AuthService, private router: Router,private toastr:ToastrService) {}
  canActivate():
    | Observable<boolean | UrlTree>
    | Promise<boolean | UrlTree>
    | boolean
    | UrlTree {
    if (this.authService.isLoggedIn()) {
      if(!this.authService.isTokenExpired()){
        return true;
      }
      else{
        this.authService.logout();
        this.router.navigate(['/Login']);
        this.toastr.error("Please Login again","Session Expired");
        return false
      }
    } else {
      return this.router.createUrlTree(['/Login']);
    }
  }
}
