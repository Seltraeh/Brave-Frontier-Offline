.class Lsg/gumi/bravefrontier/Facebook$1;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/Facebook;-><init>(Lsg/gumi/bravefrontier/BraveFrontier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/Facebook;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/Facebook;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lsg/gumi/bravefrontier/Facebook$1;->this$0:Lsg/gumi/bravefrontier/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 72
    new-instance v0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;

    const/4 v1, 0x2

    const-string v2, "Canceled"

    invoke-direct {v0, v1, v2}, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->startCall()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->startCall()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 1

    .line 61
    new-instance p1, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;-><init>(I)V

    invoke-virtual {p1}, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->startCall()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/Facebook$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
