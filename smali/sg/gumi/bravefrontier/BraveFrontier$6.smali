.class Lsg/gumi/bravefrontier/BraveFrontier$6;
.super Ljava/lang/Object;
.source "BraveFrontier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/gumi/bravefrontier/BraveFrontier;->GPGSSignIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 865
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->access$400()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-virtual {v0}, Lsg/gumi/bravefrontier/BaseGameActivity;->beginUserInitiatedSignIn()V

    return-void
.end method
