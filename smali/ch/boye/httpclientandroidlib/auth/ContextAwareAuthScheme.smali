.class public interface abstract Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;
.super Ljava/lang/Object;
.source "ContextAwareAuthScheme.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/auth/AuthScheme;


# virtual methods
.method public abstract authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/AuthenticationException;
        }
    .end annotation
.end method
