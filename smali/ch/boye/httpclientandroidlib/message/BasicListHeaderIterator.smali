.class public Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderIterator;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final allHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected currentIndex:I

.field protected headerName:Ljava/lang/String;

.field protected lastIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 90
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->findNext(I)I

    move-result p2

    iput p2, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    .line 91
    iput p1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header list must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected filterHeader(I)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 131
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->headerName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected findNext(I)I
    .locals 3

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    return v0

    .line 108
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-ge p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->filterHeader(I)Z

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

    .line 139
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

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

    .line 175
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

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

    .line 153
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    if-ltz v0, :cond_0

    .line 158
    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    .line 159
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    .line 161
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    return-object v0

    .line 155
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

    .line 185
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    if-ltz v0, :cond_0

    .line 188
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->allHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    .line 189
    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->lastIndex:I

    .line 190
    iget v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/message/BasicListHeaderIterator;->currentIndex:I

    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No header to remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
