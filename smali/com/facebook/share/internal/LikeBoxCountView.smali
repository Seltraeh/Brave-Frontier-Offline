.class public Lcom/facebook/share/internal/LikeBoxCountView;
.super Landroid/widget/FrameLayout;
.source "LikeBoxCountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private additionalTextPadding:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderRadius:F

.field private caretHeight:F

.field private caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field private caretWidth:F

.field private likeCountLabel:Landroid/widget/TextView;

.field private textPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;FFFF)V
    .locals 9

    .line 164
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 166
    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    .line 169
    new-instance v3, Landroid/graphics/RectF;

    add-float v4, p2, v1

    add-float v5, p3, v1

    invoke-direct {v3, p2, p3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v6, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 172
    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v6, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v3, v6, :cond_0

    sub-float v3, p4, p2

    .line 173
    iget v6, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float v6, v3, v6

    div-float/2addr v6, v2

    add-float/2addr v6, p2

    invoke-virtual {v0, v6, p3}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v6, v3, v2

    add-float/2addr v6, p2

    .line 174
    iget v8, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float v8, p3, v8

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    iget v6, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v3, v6

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    :cond_0
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    sub-float v3, p4, v3

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    new-instance v3, Landroid/graphics/RectF;

    sub-float v6, p4, v1

    invoke-direct {v3, v6, p3, p4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3, v5, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 185
    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v5, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v3, v5, :cond_1

    sub-float v3, p5, p3

    .line 186
    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float v5, v3, v5

    div-float/2addr v5, v2

    add-float/2addr v5, p3

    invoke-virtual {v0, p4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v5, p4

    div-float v8, v3, v2

    add-float/2addr v8, p3

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    add-float/2addr v3, p3

    invoke-virtual {v0, p4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    :cond_1
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    sub-float v3, p5, v3

    invoke-virtual {v0, p4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    new-instance v3, Landroid/graphics/RectF;

    sub-float v1, p5, v1

    invoke-direct {v3, v6, v1, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 198
    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v5, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v3, v5, :cond_2

    sub-float/2addr p4, p2

    .line 199
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v3, p4

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v3, p4, v2

    add-float/2addr v3, p2

    .line 200
    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v5, p5

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr p4, v3

    div-float/2addr p4, v2

    add-float/2addr p4, p2

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 205
    :cond_2
    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr p4, p2

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, p2, v1, v4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p4, v7, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 211
    iget-object p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne p4, v1, :cond_3

    sub-float/2addr p5, p3

    .line 212
    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr p4, p5

    div-float/2addr p4, v2

    add-float/2addr p4, p3

    invoke-virtual {v0, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 213
    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float p4, p2, p4

    div-float v1, p5, v2

    add-float/2addr v1, p3

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr p5, p4

    div-float/2addr p5, v2

    add-float/2addr p5, p3

    invoke-virtual {v0, p2, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    :cond_3
    iget p4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr p3, p4

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    iget-object p2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_border_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$color;->com_facebook_likeboxcountview_border_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->initializeLikeCountLabel(Landroid/content/Context;)V

    .line 134
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    return-void
.end method

.method private initializeLikeCountLabel(Landroid/content/Context;)V
    .locals 2

    .line 140
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 141
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    iget-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$color;->com_facebook_likeboxcountview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 148
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    return-void
.end method

.method private setAdditionalTextPadding(IIII)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    add-int/2addr p3, v1

    add-int/2addr v1, p4

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 101
    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$1;->$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    iget-object v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    .line 103
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    .line 112
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    .line 109
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    .line 106
    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    :goto_0
    int-to-float v6, v1

    int-to-float v7, v0

    int-to-float v8, v2

    int-to-float v9, v3

    move-object v4, p0

    move-object v5, p1

    .line 116
    invoke-direct/range {v4 .. v9}, Lcom/facebook/share/internal/LikeBoxCountView;->drawBorder(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method public setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 78
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$1;->$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v1, v1, v1, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_0

    .line 86
    :cond_1
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v1, v1, p1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_0

    .line 83
    :cond_2
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v1, p1, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_0

    .line 80
    :cond_3
    iget p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
