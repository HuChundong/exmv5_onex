.class Lcom/htc/util/mail/util/ParsingDroid$Pattern;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/util/ParsingDroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/util/ParsingDroid$Pattern$Key;
    }
.end annotation


# instance fields
.field public mAnyMsgButAndSignZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mAnyMsgButAtSignOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mAnyMsgButColonZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mAnyMsgButExitZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mAtSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mBlockQuoteTagStart:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mBrTag:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mColon:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mDashLine:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mDashLineOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mFindSrcAttrButGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mGreaterThanSignHtml:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mLessThanSignHtml:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mMessage:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mOriginal:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mQuotationtionOne:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mReply:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mSpace:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public mTypeAttrCite:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public num:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

.field public numOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 455
    invoke-virtual {p0}, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->initQuoteFormat()V

    .line 456
    return-void
.end method


# virtual methods
.method public initQuoteFormat()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x44c

    const-string v2, "-"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mDashLine:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 460
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x44d

    const-string v2, ">"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 461
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x457

    const-string v2, "&lt;"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mLessThanSignHtml:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 462
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x454

    const-string v2, "reply"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mReply:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 463
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x44f

    const-string v2, "original"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mOriginal:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 464
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x450

    const-string v2, "message"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mMessage:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 465
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x452

    const-string v2, "<blockquote"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mBlockQuoteTagStart:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 466
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x453

    const-string v2, "type=\"cite\">"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mTypeAttrCite:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 467
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x455

    const-string v2, "@"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAtSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 468
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x456

    const-string v2, ":"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mColon:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 469
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x44e

    const-string v2, " "

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mSpace:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 470
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x458

    const-string v2, "&gt;"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mGreaterThanSignHtml:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 471
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x459

    const-string v2, "<br>"

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mBrTag:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 474
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3ec

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mDashLineOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 475
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitNoneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 476
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mExitOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 477
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f0

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationtionOne:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 478
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f1

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mQuotationOneOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 479
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f2

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->numOrNone:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 480
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f3

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->num:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 481
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExit:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 482
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButExitZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 483
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f4

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButAtSignOneOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 484
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f5

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButColonZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 485
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f6

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mAnyMsgButAndSignZeroOrMore:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 486
    new-instance v0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    const/16 v1, 0x3f7

    invoke-direct {v0, v1, v3}, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$Pattern;->mFindSrcAttrButGreaterSign:Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;

    .line 487
    return-void
.end method
