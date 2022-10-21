.class final Lcom/tapjoy/internal/ew;
.super Lcom/tapjoy/internal/ev;
.source "SourceFile"


# instance fields
.field private final c:Lcom/tapjoy/internal/gf;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/tapjoy/internal/ev;-><init>()V

    .line 11
    new-instance v0, Lcom/tapjoy/internal/ew$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ew$1;-><init>(Lcom/tapjoy/internal/ew;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ew;->c:Lcom/tapjoy/internal/gf;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ew;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tapjoy/internal/ev;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/ew;->c:Lcom/tapjoy/internal/gf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/gf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    return p1
.end method
