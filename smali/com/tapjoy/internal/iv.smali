.class public final Lcom/tapjoy/internal/iv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/iw;
.implements Lcom/tapjoy/internal/ix;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Lcom/tapjoy/internal/jc;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 48
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/internal/iv;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)V
    .locals 9

    const/4 v0, 0x0

    .line 767
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 768
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 2775
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static/range {v3 .. v8}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    .line 2777
    iget-object v2, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const/4 v1, -0x1

    goto :goto_1

    .line 2779
    :cond_0
    iget v4, v2, Lcom/tapjoy/internal/jc;->c:I

    iget v5, v2, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2780
    iget-object v4, v2, Lcom/tapjoy/internal/jc;->a:[B

    iget v5, v2, Lcom/tapjoy/internal/jc;->b:I

    invoke-static {v4, v5, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2782
    iget v4, v2, Lcom/tapjoy/internal/jc;->b:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/tapjoy/internal/jc;->b:I

    .line 2783
    iget-wide v5, p0, Lcom/tapjoy/internal/iv;->b:J

    int-to-long v7, v1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/tapjoy/internal/iv;->b:J

    .line 2785
    iget v5, v2, Lcom/tapjoy/internal/jc;->c:I

    if-ne v4, v5, :cond_1

    .line 2786
    invoke-virtual {v2}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 2787
    invoke-static {v2}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    :cond_1
    :goto_1
    if-eq v1, v3, :cond_2

    add-int/2addr v0, v1

    goto :goto_0

    .line 769
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method private g(J)[B
    .locals 6

    .line 751
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 756
    new-array p1, p2, [B

    .line 757
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/iv;->a([B)V

    return-object p1

    .line 753
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)Lcom/tapjoy/internal/iv;
    .locals 4

    const/4 v0, 0x1

    .line 1009
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/iv;->c(I)Lcom/tapjoy/internal/jc;

    move-result-object v0

    .line 1010
    iget-object v1, v0, Lcom/tapjoy/internal/jc;->a:[B

    iget v2, v0, Lcom/tapjoy/internal/jc;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/tapjoy/internal/jc;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1011
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    return-object p0
.end method

.method public final a(Lcom/tapjoy/internal/iy;)Lcom/tapjoy/internal/iv;
    .locals 1

    if-eqz p1, :cond_0

    .line 825
    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/iy;->a(Lcom/tapjoy/internal/iv;)V

    return-object p0

    .line 824
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/iv;
    .locals 10

    .line 830
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p1, :cond_b

    if-ltz v0, :cond_a

    .line 2839
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    .line 2846
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    const/4 v5, 0x1

    .line 2849
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/iv;->c(I)Lcom/tapjoy/internal/jc;

    move-result-object v5

    .line 2850
    iget-object v6, v5, Lcom/tapjoy/internal/jc;->a:[B

    .line 2851
    iget v7, v5, Lcom/tapjoy/internal/jc;->c:I

    sub-int/2addr v7, v2

    rsub-int v8, v7, 0x2000

    .line 2852
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v9, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v3, v3

    .line 2855
    aput-byte v3, v6, v2

    :goto_1
    move v2, v9

    if-ge v2, v8, :cond_0

    .line 2860
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v4, :cond_0

    add-int/lit8 v9, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v3, v3

    .line 2862
    aput-byte v3, v6, v2

    goto :goto_1

    :cond_0
    add-int/2addr v7, v2

    .line 2865
    iget v3, v5, Lcom/tapjoy/internal/jc;->c:I

    sub-int/2addr v7, v3

    add-int/2addr v3, v7

    .line 2866
    iput v3, v5, Lcom/tapjoy/internal/jc;->c:I

    .line 2867
    iget-wide v3, p0, Lcom/tapjoy/internal/iv;->b:J

    int-to-long v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tapjoy/internal/iv;->b:J

    goto :goto_0

    :cond_1
    const/16 v5, 0x800

    if-ge v3, v5, :cond_2

    shr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0xc0

    .line 2871
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    .line 2872
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt v3, v5, :cond_7

    const v5, 0xdfff

    if-le v3, v5, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_4

    .line 2885
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    const v9, 0xdbff

    if-gt v3, v9, :cond_6

    const v9, 0xdc00

    if-lt v8, v9, :cond_6

    if-le v8, v5, :cond_5

    goto :goto_4

    :cond_5
    const/high16 v5, 0x10000

    const v7, -0xd801

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0xa

    const v7, -0xdc01

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    add-int/2addr v3, v5

    shr-int/lit8 v5, v3, 0x12

    or-int/lit16 v5, v5, 0xf0

    .line 2898
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    shr-int/lit8 v5, v3, 0xc

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    .line 2899
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    .line 2900
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    and-int/2addr v3, v6

    or-int/2addr v3, v4

    .line 2901
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 2887
    :cond_6
    :goto_4
    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    move v2, v7

    goto/16 :goto_0

    :cond_7
    :goto_5
    shr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0xe0

    .line 2877
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v4

    .line 2878
    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    .line 2879
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    goto :goto_2

    :cond_8
    return-object p0

    .line 2840
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endIndex > string.length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2837
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex < beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2834
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final a([BII)Lcom/tapjoy/internal/iv;
    .locals 9

    if-eqz p1, :cond_1

    .line 973
    array-length v0, p1

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    add-int/lit8 p3, p3, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 977
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/iv;->c(I)Lcom/tapjoy/internal/jc;

    move-result-object v0

    sub-int v1, p3, p2

    .line 979
    iget v2, v0, Lcom/tapjoy/internal/jc;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 980
    iget-object v2, v0, Lcom/tapjoy/internal/jc;->a:[B

    iget v3, v0, Lcom/tapjoy/internal/jc;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 983
    iget v2, v0, Lcom/tapjoy/internal/jc;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/tapjoy/internal/jc;->c:I

    goto :goto_0

    .line 986
    :cond_0
    iget-wide p1, p0, Lcom/tapjoy/internal/iv;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/tapjoy/internal/iv;->b:J

    return-object p0

    .line 972
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a()Lcom/tapjoy/internal/iw;
    .locals 0

    return-object p0
.end method

.method public final a(J)V
    .locals 3

    .line 102
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/tapjoy/internal/iv;J)V
    .locals 8

    if-eqz p1, :cond_c

    if-eq p1, p0, :cond_b

    .line 1215
    iget-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_a

    .line 1219
    iget-object v0, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    iget v1, v0, Lcom/tapjoy/internal/jc;->c:I

    iget v0, v0, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-gez v3, :cond_5

    .line 1220
    iget-object v0, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1221
    iget-boolean v1, v0, Lcom/tapjoy/internal/jc;->e:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/tapjoy/internal/jc;->c:I

    int-to-long v3, v1

    add-long/2addr v3, p2

    iget-boolean v1, v0, Lcom/tapjoy/internal/jc;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    iget v1, v0, Lcom/tapjoy/internal/jc;->b:I

    :goto_2
    int-to-long v5, v1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2000

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    .line 1224
    iget-object v1, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/internal/jc;->a(Lcom/tapjoy/internal/jc;I)V

    .line 1225
    iget-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    .line 1226
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    return-void

    .line 1231
    :cond_2
    iget-object v0, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    long-to-int v1, p2

    if-lez v1, :cond_4

    .line 3113
    iget v3, v0, Lcom/tapjoy/internal/jc;->c:I

    iget v4, v0, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_4

    const/16 v3, 0x400

    if-lt v1, v3, :cond_3

    .line 3122
    new-instance v3, Lcom/tapjoy/internal/jc;

    invoke-direct {v3, v0}, Lcom/tapjoy/internal/jc;-><init>(Lcom/tapjoy/internal/jc;)V

    goto :goto_3

    .line 3124
    :cond_3
    invoke-static {}, Lcom/tapjoy/internal/jd;->a()Lcom/tapjoy/internal/jc;

    move-result-object v3

    .line 3125
    iget-object v4, v0, Lcom/tapjoy/internal/jc;->a:[B

    iget v5, v0, Lcom/tapjoy/internal/jc;->b:I

    iget-object v6, v3, Lcom/tapjoy/internal/jc;->a:[B

    invoke-static {v4, v5, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3128
    :goto_3
    iget v4, v3, Lcom/tapjoy/internal/jc;->b:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/tapjoy/internal/jc;->c:I

    .line 3129
    iget v4, v0, Lcom/tapjoy/internal/jc;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/tapjoy/internal/jc;->b:I

    .line 3130
    iget-object v0, v0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/jc;->a(Lcom/tapjoy/internal/jc;)Lcom/tapjoy/internal/jc;

    .line 1231
    iput-object v3, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    goto :goto_4

    .line 3113
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1236
    :cond_5
    :goto_4
    iget-object v0, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 1237
    iget v1, v0, Lcom/tapjoy/internal/jc;->c:I

    iget v3, v0, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v1, v3

    int-to-long v3, v1

    .line 1238
    invoke-virtual {v0}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object v1

    iput-object v1, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 1239
    iget-object v1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-nez v1, :cond_6

    .line 1240
    iput-object v0, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 1241
    iput-object v0, v0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    iput-object v0, v0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    goto :goto_6

    .line 1243
    :cond_6
    iget-object v1, v1, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    .line 1244
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/jc;->a(Lcom/tapjoy/internal/jc;)Lcom/tapjoy/internal/jc;

    move-result-object v0

    .line 3139
    iget-object v1, v0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    if-eq v1, v0, :cond_9

    .line 3140
    iget-boolean v5, v1, Lcom/tapjoy/internal/jc;->e:Z

    if-eqz v5, :cond_8

    .line 3141
    iget v5, v0, Lcom/tapjoy/internal/jc;->c:I

    iget v6, v0, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v5, v6

    .line 3142
    iget v6, v1, Lcom/tapjoy/internal/jc;->c:I

    rsub-int v6, v6, 0x2000

    iget-boolean v7, v1, Lcom/tapjoy/internal/jc;->d:Z

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    iget v2, v1, Lcom/tapjoy/internal/jc;->b:I

    :goto_5
    add-int/2addr v6, v2

    if-gt v5, v6, :cond_8

    .line 3144
    iget-object v1, v0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    invoke-virtual {v0, v1, v5}, Lcom/tapjoy/internal/jc;->a(Lcom/tapjoy/internal/jc;I)V

    .line 3145
    invoke-virtual {v0}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    .line 3146
    invoke-static {v0}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    .line 1247
    :cond_8
    :goto_6
    iget-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    sub-long/2addr v0, v3

    iput-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    .line 1248
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    sub-long/2addr p2, v3

    goto/16 :goto_0

    .line 3139
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_a
    return-void

    .line 1214
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1213
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public final b(Lcom/tapjoy/internal/iv;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1256
    iget-wide v2, p0, Lcom/tapjoy/internal/iv;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    .line 1258
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lcom/tapjoy/internal/iv;->a(Lcom/tapjoy/internal/iv;J)V

    return-wide p2

    .line 1255
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1254
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Lcom/tapjoy/internal/iv;
    .locals 5

    .line 1044
    invoke-static {p1}, Lcom/tapjoy/internal/ji;->a(I)I

    move-result p1

    const/4 v0, 0x4

    .line 3031
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/iv;->c(I)Lcom/tapjoy/internal/jc;

    move-result-object v0

    .line 3032
    iget-object v1, v0, Lcom/tapjoy/internal/jc;->a:[B

    .line 3033
    iget v2, v0, Lcom/tapjoy/internal/jc;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 3034
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 3035
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 3036
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 3037
    aput-byte p1, v1, v3

    .line 3038
    iput v2, v0, Lcom/tapjoy/internal/jc;->c:I

    .line 3039
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    return-object p0
.end method

.method public final synthetic b(Lcom/tapjoy/internal/iy;)Lcom/tapjoy/internal/iw;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/iv;->a(Lcom/tapjoy/internal/iy;)Lcom/tapjoy/internal/iv;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/tapjoy/internal/iw;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/iv;->a(Ljava/lang/String;)Lcom/tapjoy/internal/iv;

    move-result-object p1

    return-object p1
.end method

.method public final b(J)Lcom/tapjoy/internal/iy;
    .locals 1

    .line 529
    new-instance v0, Lcom/tapjoy/internal/iy;

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/iv;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/iy;-><init>([B)V

    return-object v0
.end method

.method public final b()Z
    .locals 5

    .line 98
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 5

    .line 260
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    iget-object v2, v2, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    .line 265
    iget v3, v2, Lcom/tapjoy/internal/jc;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v4, v2, Lcom/tapjoy/internal/jc;->e:Z

    if-eqz v4, :cond_1

    .line 266
    iget v2, v2, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method final c(I)Lcom/tapjoy/internal/jc;
    .locals 3

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    .line 1150
    iget-object v1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-nez v1, :cond_0

    .line 1151
    invoke-static {}, Lcom/tapjoy/internal/jd;->a()Lcom/tapjoy/internal/jc;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 1152
    iput-object p1, p1, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    iput-object p1, p1, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    return-object p1

    .line 1155
    :cond_0
    iget-object v1, v1, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    .line 1156
    iget v2, v1, Lcom/tapjoy/internal/jc;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_1

    iget-boolean p1, v1, Lcom/tapjoy/internal/jc;->e:Z

    if-nez p1, :cond_2

    .line 1157
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/jd;->a()Lcom/tapjoy/internal/jc;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/jc;->a(Lcom/tapjoy/internal/jc;)Lcom/tapjoy/internal/jc;

    move-result-object v1

    :cond_2
    return-object v1

    .line 1148
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c(J)Ljava/lang/String;
    .locals 7

    .line 594
    sget-object v0, Lcom/tapjoy/internal/ji;->a:Ljava/nio/charset/Charset;

    .line 2606
    iget-wide v1, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    if-eqz v0, :cond_4

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p1, v1

    if-gtz v3, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const-string p1, ""

    return-object p1

    .line 2613
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 2614
    iget v2, v1, Lcom/tapjoy/internal/jc;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget v4, v1, Lcom/tapjoy/internal/jc;->c:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 2616
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/iv;->g(J)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 2619
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/tapjoy/internal/jc;->a:[B

    iget v4, v1, Lcom/tapjoy/internal/jc;->b:I

    long-to-int v5, p1

    invoke-direct {v2, v3, v4, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2620
    iget v0, v1, Lcom/tapjoy/internal/jc;->b:I

    int-to-long v3, v0

    add-long/2addr v3, p1

    long-to-int v0, v3

    iput v0, v1, Lcom/tapjoy/internal/jc;->b:I

    .line 2621
    iget-wide v3, p0, Lcom/tapjoy/internal/iv;->b:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/tapjoy/internal/iv;->b:J

    .line 2623
    iget p1, v1, Lcom/tapjoy/internal/jc;->c:I

    if-ne v0, p1, :cond_2

    .line 2624
    invoke-virtual {v1}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 2625
    invoke-static {v1}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    :cond_2
    return-object v2

    .line 2609
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2607
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/tapjoy/internal/iv;->i()Lcom/tapjoy/internal/iv;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()B
    .locals 9

    .line 273
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 275
    iget-object v2, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 276
    iget v3, v2, Lcom/tapjoy/internal/jc;->b:I

    .line 277
    iget v4, v2, Lcom/tapjoy/internal/jc;->c:I

    .line 279
    iget-object v5, v2, Lcom/tapjoy/internal/jc;->a:[B

    add-int/lit8 v6, v3, 0x1

    .line 280
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 281
    iput-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    if-ne v6, v4, :cond_0

    .line 284
    invoke-virtual {v2}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 285
    invoke-static {v2}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    goto :goto_0

    .line 287
    :cond_0
    iput v6, v2, Lcom/tapjoy/internal/jc;->b:I

    :goto_0
    return v3

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic d(I)Lcom/tapjoy/internal/iw;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/iv;->b(I)Lcom/tapjoy/internal/iv;

    move-result-object p1

    return-object p1
.end method

.method public final d(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 808
    iget-object v0, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-eqz v0, :cond_1

    .line 810
    iget v1, v0, Lcom/tapjoy/internal/jc;->c:I

    iget v0, v0, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 811
    iget-wide v2, p0, Lcom/tapjoy/internal/iv;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tapjoy/internal/iv;->b:J

    sub-long/2addr p1, v4

    .line 813
    iget-object v0, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    iget v2, v0, Lcom/tapjoy/internal/jc;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/tapjoy/internal/jc;->b:I

    .line 815
    iget v1, v0, Lcom/tapjoy/internal/jc;->c:I

    if-ne v2, v1, :cond_0

    .line 817
    invoke-virtual {v0}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 818
    invoke-static {v0}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    goto :goto_0

    .line 808
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public final e()I
    .locals 10

    .line 333
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 335
    iget-object v4, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 336
    iget v5, v4, Lcom/tapjoy/internal/jc;->b:I

    .line 337
    iget v6, v4, Lcom/tapjoy/internal/jc;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/tapjoy/internal/iv;->d()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 342
    invoke-virtual {p0}, Lcom/tapjoy/internal/iv;->d()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 343
    invoke-virtual {p0}, Lcom/tapjoy/internal/iv;->d()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 344
    invoke-virtual {p0}, Lcom/tapjoy/internal/iv;->d()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 347
    :cond_0
    iget-object v7, v4, Lcom/tapjoy/internal/jc;->a:[B

    add-int/lit8 v8, v5, 0x1

    .line 348
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 352
    iput-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    if-ne v9, v6, :cond_1

    .line 355
    invoke-virtual {v4}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 356
    invoke-static {v4}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    goto :goto_0

    .line 358
    :cond_1
    iput v9, v4, Lcom/tapjoy/internal/jc;->b:I

    :goto_0
    return v5

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/internal/iv;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(J)Lcom/tapjoy/internal/iv;
    .locals 9

    .line 1065
    invoke-static {p1, p2}, Lcom/tapjoy/internal/ji;->a(J)J

    move-result-wide p1

    const/16 v0, 0x8

    .line 3048
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/iv;->c(I)Lcom/tapjoy/internal/jc;

    move-result-object v1

    .line 3049
    iget-object v2, v1, Lcom/tapjoy/internal/jc;->a:[B

    .line 3050
    iget v3, v1, Lcom/tapjoy/internal/jc;->c:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 3051
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 3052
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 3053
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 3054
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 3055
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 3056
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 3057
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 3058
    aput-byte p1, v2, v4

    .line 3059
    iput v0, v1, Lcom/tapjoy/internal/jc;->c:I

    .line 3060
    iget-wide p1, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tapjoy/internal/iv;->b:J

    return-object p0
.end method

.method public final synthetic e(I)Lcom/tapjoy/internal/iw;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/iv;->a(I)Lcom/tapjoy/internal/iv;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1546
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/iv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1547
    :cond_1
    check-cast p1, Lcom/tapjoy/internal/iv;

    .line 1548
    iget-wide v3, p0, Lcom/tapjoy/internal/iv;->b:J

    iget-wide v5, p1, Lcom/tapjoy/internal/iv;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 1551
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 1552
    iget-object p1, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 1553
    iget v3, v1, Lcom/tapjoy/internal/jc;->b:I

    .line 1554
    iget v4, p1, Lcom/tapjoy/internal/jc;->b:I

    .line 1556
    :goto_0
    iget-wide v7, p0, Lcom/tapjoy/internal/iv;->b:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    .line 1557
    iget v7, v1, Lcom/tapjoy/internal/jc;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/tapjoy/internal/jc;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_1
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 1560
    iget-object v10, v1, Lcom/tapjoy/internal/jc;->a:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lcom/tapjoy/internal/jc;->a:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_1

    .line 1563
    :cond_5
    iget v9, v1, Lcom/tapjoy/internal/jc;->c:I

    if-ne v3, v9, :cond_6

    .line 1564
    iget-object v1, v1, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    .line 1565
    iget v3, v1, Lcom/tapjoy/internal/jc;->b:I

    .line 1568
    :cond_6
    iget v9, p1, Lcom/tapjoy/internal/jc;->c:I

    if-ne v4, v9, :cond_7

    .line 1569
    iget-object p1, p1, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    .line 1570
    iget v4, p1, Lcom/tapjoy/internal/jc;->b:I

    :cond_7
    add-long/2addr v5, v7

    goto :goto_0

    :cond_8
    return v0
.end method

.method public final f()I
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/tapjoy/internal/iv;->e()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/ji;->a(I)I

    move-result v0

    return v0
.end method

.method public final synthetic f(J)Lcom/tapjoy/internal/iw;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/iv;->e(J)Lcom/tapjoy/internal/iv;

    move-result-object p1

    return-object p1
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g()J
    .locals 16

    move-object/from16 v0, p0

    .line 2365
    iget-wide v1, v0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 2367
    iget-object v5, v0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 2368
    iget v6, v5, Lcom/tapjoy/internal/jc;->b:I

    .line 2369
    iget v7, v5, Lcom/tapjoy/internal/jc;->c:I

    sub-int v8, v7, v6

    const/16 v9, 0x20

    const/16 v10, 0x8

    if-ge v8, v10, :cond_0

    .line 2373
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/iv;->e()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    shl-long/2addr v1, v9

    .line 2374
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/iv;->e()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    goto :goto_1

    .line 2377
    :cond_0
    iget-object v8, v5, Lcom/tapjoy/internal/jc;->a:[B

    add-int/lit8 v11, v6, 0x1

    .line 2378
    aget-byte v6, v8, v6

    int-to-long v12, v6

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v6, 0x38

    shl-long/2addr v12, v6

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, v8, v11

    int-to-long v3, v11

    and-long/2addr v3, v14

    const/16 v11, 0x30

    shl-long/2addr v3, v11

    or-long/2addr v3, v12

    add-int/lit8 v11, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v12, v6

    and-long/2addr v12, v14

    const/16 v6, 0x28

    shl-long/2addr v12, v6

    or-long/2addr v3, v12

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, v8, v11

    int-to-long v11, v11

    and-long/2addr v11, v14

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v11, v6

    and-long/2addr v11, v14

    const/16 v6, 0x18

    shl-long/2addr v11, v6

    or-long/2addr v3, v11

    add-int/lit8 v6, v9, 0x1

    aget-byte v9, v8, v9

    int-to-long v11, v9

    and-long/2addr v11, v14

    const/16 v9, 0x10

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v11, v6

    and-long/2addr v11, v14

    shl-long v10, v11, v10

    or-long/2addr v3, v10

    add-int/lit8 v6, v9, 0x1

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v14

    or-long/2addr v3, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v1, v8

    .line 2386
    iput-wide v1, v0, Lcom/tapjoy/internal/iv;->b:J

    if-ne v6, v7, :cond_1

    .line 2389
    invoke-virtual {v5}, Lcom/tapjoy/internal/jc;->a()Lcom/tapjoy/internal/jc;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 2390
    invoke-static {v5}, Lcom/tapjoy/internal/jd;->a(Lcom/tapjoy/internal/jc;)V

    goto :goto_0

    .line 2392
    :cond_1
    iput v6, v5, Lcom/tapjoy/internal/jc;->b:I

    :goto_0
    move-wide v1, v3

    .line 407
    :goto_1
    invoke-static {v1, v2}, Lcom/tapjoy/internal/ji;->a(J)J

    move-result-wide v1

    return-wide v1

    .line 2365
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size < 8: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/tapjoy/internal/iv;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h()[B
    .locals 2

    .line 744
    :try_start_0
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/internal/iv;->g(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 746
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1578
    iget-object v0, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1582
    :cond_1
    iget v2, v0, Lcom/tapjoy/internal/jc;->b:I

    iget v3, v0, Lcom/tapjoy/internal/jc;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1583
    iget-object v4, v0, Lcom/tapjoy/internal/jc;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1585
    :cond_2
    iget-object v0, v0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    .line 1586
    iget-object v2, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public final i()Lcom/tapjoy/internal/iv;
    .locals 6

    .line 1600
    new-instance v0, Lcom/tapjoy/internal/iv;

    invoke-direct {v0}, Lcom/tapjoy/internal/iv;-><init>()V

    .line 1601
    iget-wide v1, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 1603
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/jc;

    iget-object v2, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/jc;-><init>(Lcom/tapjoy/internal/jc;)V

    iput-object v1, v0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    .line 1604
    iput-object v1, v1, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    iput-object v1, v1, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    .line 1605
    iget-object v1, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    :goto_0
    iget-object v1, v1, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    iget-object v2, p0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-eq v1, v2, :cond_1

    .line 1606
    iget-object v2, v0, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    iget-object v2, v2, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    new-instance v3, Lcom/tapjoy/internal/jc;

    invoke-direct {v3, v1}, Lcom/tapjoy/internal/jc;-><init>(Lcom/tapjoy/internal/jc;)V

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/jc;->a(Lcom/tapjoy/internal/jc;)Lcom/tapjoy/internal/jc;

    goto :goto_0

    .line 1608
    :cond_1
    iget-wide v1, p0, Lcom/tapjoy/internal/iv;->b:J

    iput-wide v1, v0, Lcom/tapjoy/internal/iv;->b:J

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 3614
    iget-wide v0, p0, Lcom/tapjoy/internal/iv;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    long-to-int v1, v0

    if-nez v1, :cond_0

    .line 3624
    sget-object v0, Lcom/tapjoy/internal/iy;->b:Lcom/tapjoy/internal/iy;

    goto :goto_0

    .line 3625
    :cond_0
    new-instance v0, Lcom/tapjoy/internal/je;

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/je;-><init>(Lcom/tapjoy/internal/iv;I)V

    .line 1595
    :goto_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3615
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/internal/iv;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
