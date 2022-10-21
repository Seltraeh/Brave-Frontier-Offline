.class Lcom/vungle/warren/AdActivity$2;
.super Ljava/lang/Object;
.source "AdActivity.java"

# interfaces
.implements Lcom/vungle/warren/ui/OrientationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/vungle/warren/AdActivity$2;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOrientation(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/vungle/warren/AdActivity$2;->this$0:Lcom/vungle/warren/AdActivity;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdActivity;->setRequestedOrientation(I)V

    return-void
.end method
