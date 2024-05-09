import { Injectable } from '@angular/core';
import { HttpInterceptor, HttpRequest, HttpHandler, HttpEvent } from '@angular/common/http';
import { Observable } from 'rxjs';
import { AuthService } from '../../Services/auth.service';

@Injectable()


export class AuthInterceptor implements HttpInterceptor {

  constructor(private authService: AuthService) {}

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    // Check if the user is logged in
    if (this.authService.isLoggedIn()) {
      const authToken = localStorage.getItem('token');

      // add the token to the headers for requests requiring authorization
        const authRequest = request.clone({
          setHeaders: {
            Authorization: `Bearer ${authToken}`
          }
        });
        return next.handle(authRequest);
      }
    // For requests that do not require authorization pass the original request
    return next.handle(request);
  }
}