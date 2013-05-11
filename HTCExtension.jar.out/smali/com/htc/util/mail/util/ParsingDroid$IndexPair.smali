.class public Lcom/htc/util/mail/util/ParsingDroid$IndexPair;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/util/ParsingDroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexPair"
.end annotation


# instance fields
.field private firstIndex:I

.field private secondIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->firstIndex:I

    .line 34
    iput v0, p0, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->secondIndex:I

    .line 43
    iput p1, p0, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->firstIndex:I

    .line 44
    iput p2, p0, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->secondIndex:I

    .line 45
    return-void
.end method


# virtual methods
.method public getFirstIndex()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->firstIndex:I

    return v0
.end method

.method public getSecondIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->secondIndex:I

    return v0
.end method
