.class public Lcom/google/ads/conversiontracking/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JI)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/google/ads/conversiontracking/d;->h:J

    .line 51
    iput-object p3, p0, Lcom/google/ads/conversiontracking/d;->g:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/google/ads/conversiontracking/d;->f:Ljava/lang/String;

    .line 53
    iput-boolean p5, p0, Lcom/google/ads/conversiontracking/d;->b:Z

    .line 54
    iput-boolean p6, p0, Lcom/google/ads/conversiontracking/d;->a:Z

    .line 55
    iput-object p7, p0, Lcom/google/ads/conversiontracking/d;->e:Ljava/lang/String;

    .line 56
    iput-wide p8, p0, Lcom/google/ads/conversiontracking/d;->d:J

    .line 57
    iput p10, p0, Lcom/google/ads/conversiontracking/d;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$c;ZZ)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/ads/conversiontracking/d;->g:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/google/ads/conversiontracking/d;->b:Z

    .line 27
    iput-boolean p3, p0, Lcom/google/ads/conversiontracking/d;->a:Z

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/google/ads/conversiontracking/d;->h:J

    .line 29
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/conversiontracking/d;->d:J

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/ads/conversiontracking/d;->c:I

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 33
    invoke-static {p2}, Lcom/google/ads/conversiontracking/g;->b(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/conversiontracking/d;->f:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/google/ads/conversiontracking/g;->a(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/conversiontracking/d;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/google/ads/conversiontracking/d;->f:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/google/ads/conversiontracking/d;->e:Ljava/lang/String;

    :goto_0
    return-void
.end method
