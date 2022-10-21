.class Lsg/gumi/bravefrontier/GameHelper$1;
.super Ljava/lang/Object;
.source "GameHelper.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/GameHelper;->showAchievements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsg/gumi/bravefrontier/GameHelper;


# direct methods
.method constructor <init>(Lsg/gumi/bravefrontier/GameHelper;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameHelper$1;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameHelper$1;->this$0:Lsg/gumi/bravefrontier/GameHelper;

    iget-object v0, v0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lsg/gumi/bravefrontier/GameHelper;->access$000()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lsg/gumi/bravefrontier/GameHelper$1;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
