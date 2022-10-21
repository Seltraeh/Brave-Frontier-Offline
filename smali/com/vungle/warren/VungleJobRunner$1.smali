.class Lcom/vungle/warren/VungleJobRunner$1;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/VungleJobRunner;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleJobRunner;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner$1;->this$0:Lcom/vungle/warren/VungleJobRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/vungle/warren/VungleJobRunner$1;->this$0:Lcom/vungle/warren/VungleJobRunner;

    invoke-static {p1}, Lcom/vungle/warren/VungleJobRunner;->access$000(Lcom/vungle/warren/VungleJobRunner;)V

    return-void
.end method
