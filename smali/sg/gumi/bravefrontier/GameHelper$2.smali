.class Lsg/gumi/bravefrontier/GameHelper$2;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/GameHelper;->onStart(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/GameHelper;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper$2;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 312
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper$2;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsg/gumi/bravefrontier/GameHelper;->notifyListener(Z)V

    return-void
.end method
