.class Lcom/vungle/warren/ui/view/BaseAdView$1;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/BaseAdView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ui/view/BaseAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/BaseAdView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$1;->this$0:Lcom/vungle/warren/ui/view/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$1;->this$0:Lcom/vungle/warren/ui/view/BaseAdView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/vungle/warren/ui/view/BaseAdView;->currentDialog:Landroid/app/Dialog;

    return-void
.end method
