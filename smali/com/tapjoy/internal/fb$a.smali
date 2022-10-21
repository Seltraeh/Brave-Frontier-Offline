.class final Lcom/tapjoy/internal/fb$a;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/fb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 47
    const-class v0, Lcom/tapjoy/internal/fb;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ei;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Lcom/tapjoy/internal/ep;
    .locals 0

    .line 1052
    invoke-static {p1}, Lcom/tapjoy/internal/fb;->a(I)Lcom/tapjoy/internal/fb;

    move-result-object p1

    return-object p1
.end method
