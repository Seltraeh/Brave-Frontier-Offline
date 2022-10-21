.class public Lcom/facebook/appevents/ml/MTensor;
.super Ljava/lang/Object;
.source "MTensor.java"


# instance fields
.field private capacity:I

.field private data:[F

.field private shape:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/appevents/ml/MTensor;->shape:[I

    .line 31
    invoke-static {p1}, Lcom/facebook/appevents/ml/MTensor;->getCapacity([I)I

    move-result p1

    iput p1, p0, Lcom/facebook/appevents/ml/MTensor;->capacity:I

    .line 32
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/facebook/appevents/ml/MTensor;->data:[F

    return-void
.end method

.method private static getCapacity([I)I
    .locals 4

    .line 58
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    mul-int v1, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public getData()[F
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->data:[F

    return-object v0
.end method

.method public getShape(I)I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->shape:[I

    aget p1, v0, p1

    return p1
.end method

.method public getShapeSize()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->shape:[I

    array-length v0, v0

    return v0
.end method

.method public reshape([I)V
    .locals 4

    .line 44
    iput-object p1, p0, Lcom/facebook/appevents/ml/MTensor;->shape:[I

    .line 45
    invoke-static {p1}, Lcom/facebook/appevents/ml/MTensor;->getCapacity([I)I

    move-result p1

    .line 46
    new-array v0, p1, [F

    .line 47
    iget-object v1, p0, Lcom/facebook/appevents/ml/MTensor;->data:[F

    iget v2, p0, Lcom/facebook/appevents/ml/MTensor;->capacity:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->data:[F

    .line 49
    iput p1, p0, Lcom/facebook/appevents/ml/MTensor;->capacity:I

    return-void
.end method
