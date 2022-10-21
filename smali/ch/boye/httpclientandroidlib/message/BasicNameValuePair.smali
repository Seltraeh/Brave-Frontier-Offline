.class public Lch/boye/httpclientandroidlib/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/NameValuePair;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5957a9ac336aca08L


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    return-void

    .line 58
    :cond_0
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

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Lch/boye/httpclientandroidlib/NameValuePair;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 92
    check-cast p1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    .line 93
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    iget-object v3, p1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    iget-object p1, p1, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 65
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 104
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
