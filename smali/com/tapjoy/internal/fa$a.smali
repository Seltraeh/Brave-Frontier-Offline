.class public final Lcom/tapjoy/internal/fa$a;
.super Lcom/tapjoy/internal/ek$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ek$a<",
        "Lcom/tapjoy/internal/fa;",
        "Lcom/tapjoy/internal/fa$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/tapjoy/internal/fb;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/tapjoy/internal/ek$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fa;
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/fa$a;->c:Lcom/tapjoy/internal/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fa$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/tapjoy/internal/fa;

    iget-object v1, p0, Lcom/tapjoy/internal/fa$a;->c:Lcom/tapjoy/internal/fb;

    iget-object v2, p0, Lcom/tapjoy/internal/fa$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/fa$a;->e:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/ek$a;->a()Lcom/tapjoy/internal/iy;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/fa;-><init>(Lcom/tapjoy/internal/fb;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iy;)V

    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/tapjoy/internal/fa$a;->c:Lcom/tapjoy/internal/fb;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tapjoy/internal/fa$a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tapjoy/internal/er;->a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
