.class public abstract Lsg/gumi/bravefrontier/BaseGameActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "BaseGameActivity.java"


# static fields
.field public static final CLIENT_ALL:I = 0x5

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1


# instance fields
.field private mAdditionalScopes:[Ljava/lang/String;

.field protected mDebugLog:Z

.field protected mDebugTag:Ljava/lang/String;

.field protected mHelper:Lsg/gumi/bravefrontier/GameService;

.field protected mRequestedClients:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mRequestedClients:I

    const-string v1, "BaseGameActivity"

    .line 60
    iput-object v1, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mDebugTag:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mDebugLog:Z

    return-void
.end method


# virtual methods
.method protected beginUserInitiatedSignIn()V
    .locals 1

    .line 152
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->beginUserInitiatedSignIn()V

    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mDebugLog:Z

    .line 169
    iput-object p2, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mDebugTag:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1, p2}, Lsg/gumi/bravefrontier/GameService;->enableDebugLog(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getGameService()Lsg/gumi/bravefrontier/GameService;
    .locals 1

    .line 200
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScopes()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->getScopes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScopesArray()[Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->getScopesArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignInError()Lsg/gumi/bravefrontier/GameService$SignInFailureReason;
    .locals 1

    .line 196
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->getSignInError()Lsg/gumi/bravefrontier/GameService$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method public hideSystemUI()V
    .locals 2

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected isSignedIn()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p1, p2, p3}, Lsg/gumi/bravefrontier/GameService;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lsg/gumi/bravefrontier/GameService;->createService(Landroid/app/Activity;)Lsg/gumi/bravefrontier/GameService;

    move-result-object p1

    iput-object p1, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    .line 102
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mDebugTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lsg/gumi/bravefrontier/GameService;->enableDebugLog(ZLjava/lang/String;)V

    .line 105
    :cond_0
    iget-object p1, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {p1}, Lsg/gumi/bravefrontier/GameService;->getGameHelperListener()Lsg/gumi/bravefrontier/GameService$GameHelperListener;

    move-result-object v0

    iget v1, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mRequestedClients:I

    iget-object v2, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mAdditionalScopes:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lsg/gumi/bravefrontier/GameService;->setup(Lsg/gumi/bravefrontier/GameService$GameHelperListener;I[Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 128
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 129
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 122
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 111
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 117
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p0}, Lsg/gumi/bravefrontier/GameService;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lsg/gumi/bravefrontier/BaseGameActivity;->hideSystemUI()V

    :cond_0
    return-void
.end method

.method protected reconnectClients(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p1}, Lsg/gumi/bravefrontier/GameService;->reconnectClients(I)V

    return-void
.end method

.method protected varargs setRequestedClients(I[Ljava/lang/String;)V
    .locals 0

    .line 94
    iput p1, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mRequestedClients:I

    .line 95
    iput-object p2, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mAdditionalScopes:[Ljava/lang/String;

    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p1}, Lsg/gumi/bravefrontier/GameService;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0, p1, p2}, Lsg/gumi/bravefrontier/GameService;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected signOut()V
    .locals 1

    .line 156
    iget-object v0, p0, Lsg/gumi/bravefrontier/BaseGameActivity;->mHelper:Lsg/gumi/bravefrontier/GameService;

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/GameService;->signOut()V

    return-void
.end method
