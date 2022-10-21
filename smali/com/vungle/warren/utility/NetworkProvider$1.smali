.class Lcom/vungle/warren/utility/NetworkProvider$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/utility/NetworkProvider;->getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/utility/NetworkProvider;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/NetworkProvider;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$1;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 99
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$1;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {p1}, Lcom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 106
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$1;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {p1}, Lcom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    return-void
.end method
