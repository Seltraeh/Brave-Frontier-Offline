.class final Lcom/tapjoy/internal/iz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/jf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/jh;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/jh;Ljava/io/OutputStream;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tapjoy/internal/iz$1;->a:Lcom/tapjoy/internal/jh;

    iput-object p2, p0, Lcom/tapjoy/internal/iz$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/iv;J)V
    .locals 6

    .line 75
    iget-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/iz$1;->a:Lcom/tapjoy/internal/jh;

    invoke-virtual {v0}, Lcom/tapjoy/internal/jh;->a()V

    .line 78
    iget-object v0, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 79
    iget v1, v0, Lcom/tapjoy/internal/jc;->c:I

    iget v2, v0, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 80
    iget-object v1, p0, Lcom/tapjoy/internal/iz$1;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/tapjoy/internal/jc;->a:[B

    iget v4, v0, Lcom/tapjoy/internal/jc;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget v1, v0, Lcom/tapjoy/internal/jc;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tapjoy/internal/jc;->b:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 84
    iget-wide v4, p1, Lcom/tapjoy/internal/iv;->b:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lcom/tapjoy/internal/iv;->b:J

    .line 86
    iget v2, v0, Lcom/tapjoy/internal/jc;->c:I

    if-ne v1, v2, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object v1

    iput-object v1, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 88
    invoke-static {v0}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/iz$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/iz$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/iz$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
