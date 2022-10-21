.class public Lsg/gumi/bravefrontier/GameService$SignInFailureReason;
.super Ljava/lang/Object;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignInFailureReason"
.end annotation


# static fields
.field public static final NO_ACTIVITY_RESULT_CODE:I = -0x64


# instance fields
.field private mActivityResultCode:I

.field private mServiceErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, -0x64

    .line 269
    invoke-direct {p0, p1, v0}, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 256
    iput v0, p0, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->mServiceErrorCode:I

    const/16 v0, -0x64

    .line 257
    iput v0, p0, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->mActivityResultCode:I

    .line 265
    iput p1, p0, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->mServiceErrorCode:I

    .line 266
    iput p2, p0, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->mActivityResultCode:I

    return-void
.end method


# virtual methods
.method public final getActivityResultCode()I
    .locals 1

    .line 262
    iget v0, p0, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->mActivityResultCode:I

    return v0
.end method

.method public final getServiceErrorCode()I
    .locals 1

    .line 259
    iget v0, p0, Lsg/gumi/bravefrontier/GameService$SignInFailureReason;->mServiceErrorCode:I

    return v0
.end method
