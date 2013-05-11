.class public Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;
.super Ljava/lang/Object;
.source "SocialNetworkSmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/util/SocialNetworkSmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmileyInfo"
.end annotation


# instance fields
.field private mEnd:I

.field private mResId:I

.field private mStart:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "resId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mText:Ljava/lang/String;

    .line 330
    iput v1, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mStart:I

    .line 331
    iput v1, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mEnd:I

    .line 332
    iput v1, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mResId:I

    .line 342
    iput-object p1, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mText:Ljava/lang/String;

    .line 343
    iput p2, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mStart:I

    .line 344
    iput p3, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mEnd:I

    .line 345
    iput p4, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mResId:I

    .line 346
    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mEnd:I

    return v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mResId:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mStart:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/text/util/SocialNetworkSmileyParser$SmileyInfo;->mText:Ljava/lang/String;

    return-object v0
.end method
