.class public Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderElementIterator;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

.field private currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

.field private cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

.field private final headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

.field private final parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V
    .locals 1

    .line 73
    sget-object v0, Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;-><init>(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/message/HeaderValueParser;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    .line 52
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 53
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 67
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    .line 68
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parser may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header iterator may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bufferHeaderValue()V
    .locals 4

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 80
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    .line 82
    instance-of v1, v0, Lch/boye/httpclientandroidlib/FormattedHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 83
    check-cast v0, Lch/boye/httpclientandroidlib/FormattedHeader;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getBuffer()Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 84
    new-instance v3, Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v3, v2, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    iput-object v3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    .line 85
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/FormattedHeader;->getValuePos()I

    move-result v0

    invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->updatePos(I)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 91
    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lch/boye/httpclientandroidlib/message/ParserCursor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lch/boye/httpclientandroidlib/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    :cond_2
    :goto_0
    return-void
.end method

.method private parseNextElement()V
    .locals 3

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->headerIt:Lch/boye/httpclientandroidlib/HeaderIterator;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 102
    :cond_2
    :goto_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    :cond_3
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    .line 107
    :cond_4
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    if-eqz v0, :cond_0

    .line 109
    :cond_5
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_7

    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parser:Lch/boye/httpclientandroidlib/message/HeaderValueParser;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/HeaderValueParser;->parseHeaderElement(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/message/ParserCursor;)Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 113
    :cond_6
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    return-void

    .line 118
    :cond_7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->cursor:Lch/boye/httpclientandroidlib/message/ParserCursor;

    .line 121
    iput-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->buffer:Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 131
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 149
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->nextElement()Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lch/boye/httpclientandroidlib/HeaderElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 139
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;->currentElement:Lch/boye/httpclientandroidlib/HeaderElement;

    return-object v0

    .line 140
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more header elements available"

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

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
