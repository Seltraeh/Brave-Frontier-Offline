.class public Lcom/google/ads/conversiontracking/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Lcom/google/ads/conversiontracking/g$d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/ads/conversiontracking/g$a;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/g$c;)Z
    .locals 0

    .line 851
    iget-boolean p0, p0, Lcom/google/ads/conversiontracking/g$c;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/g$c;)Lcom/google/ads/conversiontracking/g$d;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$c;->d:Lcom/google/ads/conversiontracking/g$d;

    return-object p0
.end method

.method static synthetic c(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$c;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/ads/conversiontracking/g$c;)Ljava/util/Map;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$c;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/google/ads/conversiontracking/g$c;)Lcom/google/ads/conversiontracking/g$a;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$c;->g:Lcom/google/ads/conversiontracking/g$a;

    return-object p0
.end method

.method static synthetic g(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/google/ads/conversiontracking/g$c;)J
    .locals 2

    .line 851
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/g$c;->j:J

    return-wide v0
.end method

.method static synthetic i(Lcom/google/ads/conversiontracking/g$c;)Z
    .locals 0

    .line 851
    iget-boolean p0, p0, Lcom/google/ads/conversiontracking/g$c;->k:Z

    return p0
.end method

.method static synthetic j(Lcom/google/ads/conversiontracking/g$c;)Z
    .locals 0

    .line 851
    iget-boolean p0, p0, Lcom/google/ads/conversiontracking/g$c;->b:Z

    return p0
.end method

.method static synthetic k(Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$c;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/ads/conversiontracking/g$c;
    .locals 1

    const/4 v0, 0x1

    .line 873
    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/g$c;->c:Z

    return-object p0
.end method

.method public a(J)Lcom/google/ads/conversiontracking/g$c;
    .locals 1

    .line 913
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/conversiontracking/g$c;->j:J

    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/g$a;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->g:Lcom/google/ads/conversiontracking/g$a;

    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/g$d;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->d:Lcom/google/ads/conversiontracking/g$d;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/google/ads/conversiontracking/g$c;"
        }
    .end annotation

    .line 898
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->h:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .line 908
    iput-boolean p1, p0, Lcom/google/ads/conversiontracking/g$c;->b:Z

    return-object p0
.end method

.method public b()Lcom/google/ads/conversiontracking/g$c;
    .locals 1

    const/4 v0, 0x1

    .line 918
    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/g$c;->k:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$c;->i:Ljava/lang/String;

    return-object p0
.end method
