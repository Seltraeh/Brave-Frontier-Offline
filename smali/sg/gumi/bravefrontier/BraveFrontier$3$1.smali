.class Lsg/gumi/bravefrontier/BraveFrontier$3$1;
.super Ljava/util/TimerTask;
.source "BraveFrontier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontier$3;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsg/gumi/bravefrontier/BraveFrontier$3;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/BraveFrontier$3;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier$3$1;->this$1:Lsg/gumi/bravefrontier/BraveFrontier$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 322
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier$3$1;->this$1:Lsg/gumi/bravefrontier/BraveFrontier$3;

    iget-object v0, v0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {v0}, Lsg/gumi/bravefrontier/BraveFrontier;->access$200(Lsg/gumi/bravefrontier/BraveFrontier;)F

    move-result v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setBackgroundMusicVolume(F)V

    .line 323
    iget-object v0, p0, Lsg/gumi/bravefrontier/BraveFrontier$3$1;->this$1:Lsg/gumi/bravefrontier/BraveFrontier$3;

    iget-object v0, v0, Lsg/gumi/bravefrontier/BraveFrontier$3;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-static {v0}, Lsg/gumi/bravefrontier/BraveFrontier;->access$300(Lsg/gumi/bravefrontier/BraveFrontier;)F

    move-result v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEffectsVolume(F)V

    return-void
.end method
