.class final Lcom/tapjoy/TJAdUnitActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitActivity;->showErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitActivity;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity$3;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 369
    iget-object p2, p0, Lcom/tapjoy/TJAdUnitActivity$3;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p2}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
