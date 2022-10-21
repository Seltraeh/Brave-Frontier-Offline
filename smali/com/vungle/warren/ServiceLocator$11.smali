.class Lcom/vungle/warren/ServiceLocator$11;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .locals 1

    .line 207
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$11;->this$0:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/RuntimeValues;
    .locals 1

    .line 210
    new-instance v0, Lcom/vungle/warren/RuntimeValues;

    invoke-direct {v0}, Lcom/vungle/warren/RuntimeValues;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$11;->create()Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    return-object v0
.end method
