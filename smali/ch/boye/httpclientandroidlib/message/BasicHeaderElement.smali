.class public Lch/boye/httpclientandroidlib/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HeaderElement;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lch/boye/httpclientandroidlib/NameValuePair;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 63
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 66
    iput-object p3, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lch/boye/httpclientandroidlib/NameValuePair;

    .line 68
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 121
    :cond_0
    instance-of v1, p1, Lch/boye/httpclientandroidlib/HeaderElement;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 122
    check-cast p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;

    .line 123
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    iget-object p1, p1, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-static {v1, p1}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 1

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 109
    aget-object v2, v2, v1

    .line 110
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    .line 105
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getParameterCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public getParameters()[Lch/boye/httpclientandroidlib/NameValuePair;
    .locals 1

    .line 91
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/NameValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/NameValuePair;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 134
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 135
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    .line 136
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 137
    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 150
    :goto_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, "; "

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v2, p0, Lch/boye/httpclientandroidlib/message/BasicHeaderElement;->parameters:[Lch/boye/httpclientandroidlib/NameValuePair;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
