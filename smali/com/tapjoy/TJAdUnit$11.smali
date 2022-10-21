.class final Lcom/tapjoy/TJAdUnit$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;III)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$11;->d:Lcom/tapjoy/TJAdUnit;

    iput p2, p0, Lcom/tapjoy/TJAdUnit$11;->a:I

    iput p3, p0, Lcom/tapjoy/TJAdUnit$11;->b:I

    iput p4, p0, Lcom/tapjoy/TJAdUnit$11;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 906
    iget-object p1, p0, Lcom/tapjoy/TJAdUnit$11;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object p1

    iget v0, p0, Lcom/tapjoy/TJAdUnit$11;->a:I

    iget v1, p0, Lcom/tapjoy/TJAdUnit$11;->b:I

    iget v2, p0, Lcom/tapjoy/TJAdUnit$11;->c:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoReady(III)V

    return-void
.end method
