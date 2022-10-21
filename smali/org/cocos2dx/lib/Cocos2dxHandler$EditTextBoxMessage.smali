.class public Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;
.super Ljava/lang/Object;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditTextBoxMessage"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public inputFlag:I

.field public inputMode:I

.field public maxLength:I

.field public returnType:I

.field public title:Ljava/lang/String;

.field public xywh:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII[I)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;->content:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;->title:Ljava/lang/String;

    .line 176
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;->inputMode:I

    .line 177
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;->inputFlag:I

    .line 178
    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;->returnType:I

    .line 179
    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;->maxLength:I

    .line 180
    iput-object p7, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditTextBoxMessage;->xywh:[I

    return-void
.end method
