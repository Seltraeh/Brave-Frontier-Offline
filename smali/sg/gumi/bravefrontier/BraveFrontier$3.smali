.class Lsg/gumi/bravefrontier/BraveFrontier$3;
.super Landroid/telephony/PhoneStateListener;
.source "BraveFrontier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontier;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/BraveFrontier;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/BraveFrontier;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 316
    iget-object v1, p0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {v1}, Lsg/gumi/bravefrontier/BraveFrontier;->access$100(Lsg/gumi/bravefrontier/BraveFrontier;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lsg/gumi/bravefrontier/BraveFrontier$3$1;

    invoke-direct {v2, p0}, Lsg/gumi/bravefrontier/BraveFrontier$3$1;-><init>(Lsg/gumi/bravefrontier/BraveFrontier$3;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 330
    :cond_0
    iget-object v1, p0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {v1, v0}, Lsg/gumi/bravefrontier/BraveFrontier;->access$102(Lsg/gumi/bravefrontier/BraveFrontier;Z)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 334
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/BraveFrontier;->access$102(Lsg/gumi/bravefrontier/BraveFrontier;Z)Z

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getBackgroundMusicVolume()F

    move-result v2

    invoke-static {v0, v2}, Lsg/gumi/bravefrontier/BraveFrontier;->access$202(Lsg/gumi/bravefrontier/BraveFrontier;F)F

    .line 338
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getEffectsVolume()F

    move-result v2

    invoke-static {v0, v2}, Lsg/gumi/bravefrontier/BraveFrontier;->access$302(Lsg/gumi/bravefrontier/BraveFrontier;F)F

    const/4 v0, 0x0

    .line 340
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setBackgroundMusicVolume(F)V

    .line 341
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEffectsVolume(F)V

    .line 343
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {v0, v1}, Lsg/gumi/bravefrontier/BraveFrontier;->access$102(Lsg/gumi/bravefrontier/BraveFrontier;Z)Z

    .line 345
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
