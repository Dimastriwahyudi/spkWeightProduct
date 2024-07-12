@extends('layouts.login')

@section('content')
<form method="POST" action="{{ route('login') }}">
    @csrf

    <!-- Email Field -->
    <div class="form-group has-feedback">
        <input id="email" type="email" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        @if ($errors->has('email'))
            <div class="alert alert-danger mt-2">
                <strong>{{ $errors->first('email') }}</strong>
            </div>
        @endif
    </div>

    <!-- Password Field -->
    <div class="form-group has-feedback">
        <input id="password" type="password" name="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        @if ($errors->has('password'))
            <div class="alert alert-danger mt-2">
                <strong>{{ $errors->first('password') }}</strong>
            </div>
        @endif
    </div>

    <!-- Submit Button -->
    <div class="row">
        <div class="col-xs-12">
            <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
    </div>

    <!-- Register Button -->
    <div class="row mt-3">
        <div class="col-xs-12">
            <a href="{{ route('register') }}" class="btn btn-secondary btn-block btn-flat">Register</a>
        </div>
    </div>
</form>
@endsection
