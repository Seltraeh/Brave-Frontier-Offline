.class public final Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg/gumi/bravefrontier/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FacebookNativeCallback"
.end annotation


# static fields
.field public static final GET_FRIEND_LIST_FAIL:I = 0x4

.field public static final GET_FRIEND_LIST_PERMISSION:I = 0x7

.field public static final GET_FRIEND_LIST_RETRY:I = 0x8

.field public static final GET_FRIEND_LIST_SUCCESS:I = 0x3

.field public static final INVITE_FRIEND_FAIL:I = 0x6

.field public static final INVITE_FRIEND_SUCCESS:I = 0x5

.field public static final LOGIN_FAIL:I = 0x2

.field public static final LOGIN_SUCCESS:I = 0x1


# instance fields
.field final callback:I

.field final param:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->callback:I

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->param:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->callback:I

    .line 155
    iput-object p2, p0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->param:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isNativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget v0, p0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->callback:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;->param:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lsg/gumi/bravefrontier/Facebook;->onLoginFail(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_3
    invoke-static {}, Lsg/gumi/bravefrontier/Facebook;->onLoginSuccess()V

    :goto_1
    return-void
.end method

.method public startCall()V
    .locals 1

    .line 205
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
