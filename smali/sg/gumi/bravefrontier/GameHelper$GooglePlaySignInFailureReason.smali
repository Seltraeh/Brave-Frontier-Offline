.class public final Lsg/gumi/bravefrontier/GameHelper$GooglePlaySignInFailureReason;
.super Lsg/gumi/bravefrontier/GameService$SignInFailureReason;
.source "GameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/GameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GooglePlaySignInFailureReason"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, -0x64

    .line 826
    invoke-direct {p0, p1, v0}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 823
    invoke-direct {p0, p1, p2}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;-><init>(II)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignInFailureReason(serviceErrorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->getServiceErrorCode()I

    move-result v1

    invoke-static {v1}, Lsg/gumi/bravefrontier/GameHelper;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->getActivityResultCode()I

    move-result v1

    const-string v2, ")"

    const/16 v3, -0x64

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityResultCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->getActivityResultCode()I

    move-result v3

    invoke-static {v3}, Lsg/gumi/bravefrontier/GameHelper;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
