.class public final Lcom/tapjoy/internal/fy;
.super Lcom/tapjoy/internal/ft;
.source "SourceFile"


# instance fields
.field public final b:Lcom/tapjoy/internal/fp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fp;)V
    .locals 1

    const-string v0, "mm"

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/tapjoy/internal/ft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "content_card"

    const-string p2, "n2e"

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/ft;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iput-object p3, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/fp;

    return-void
.end method
