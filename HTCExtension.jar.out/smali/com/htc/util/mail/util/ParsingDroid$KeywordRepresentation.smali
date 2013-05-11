.class Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;
.super Ljava/lang/Object;
.source "ParsingDroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/util/ParsingDroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeywordRepresentation"
.end annotation


# instance fields
.field identificationValue:I

.field keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "assignedIdentificationValue"
    .parameter "keywordInput"

    .prologue
    .line 660
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;->keyword:Ljava/lang/String;

    .line 661
    iput p1, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;->identificationValue:I

    .line 662
    iput-object p2, p0, Lcom/htc/util/mail/util/ParsingDroid$KeywordRepresentation;->keyword:Ljava/lang/String;

    .line 663
    return-void
.end method
