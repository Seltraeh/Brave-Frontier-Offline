.class Lsg/gumi/bravefrontier/BraveFrontier$4;
.super Ljava/lang/Object;
.source "BraveFrontier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontier;->checkLoadedLibraries()V
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

    .line 438
    iput-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier$4;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 442
    :try_start_0
    iget-object p1, p0, Lsg/gumi/bravefrontier/BraveFrontier$4;->this$0:Lsg/gumi/bravefrontier/BraveFrontier;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :catchall_0
    :cond_0
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontierJNI;->appExit()V

    return-void
.end method
