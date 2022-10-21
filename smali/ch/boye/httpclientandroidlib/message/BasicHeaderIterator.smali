.class public Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;
.super Ljava/lang/Object;
.source "BasicHeaderIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderIterator;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final allHeaders:[Lch/boye/httpclientandroidlib/Header;

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lch/boye/httpclientandroidlib/Header;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    .line 82
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 83
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->findNext(I)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header array must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 2

    .line 119
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->headerName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    aget-object p1, v1, p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected findNext(I)I
    .locals 3

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    return v0

    .line 100
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-ge p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->filterHeader(I)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    move v0, p1

    :cond_2
    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 126
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextHeader()Lch/boye/httpclientandroidlib/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 140
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->currentIndex:I

    .line 147
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderIterator;->allHeaders:[Lch/boye/httpclientandroidlib/Header;

    aget-object v0, v1, v0

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing headers is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
