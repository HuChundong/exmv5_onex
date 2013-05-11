.class public Lcom/htc/text/tag/SecondaryLinkTag;
.super Lcom/htc/text/tag/PrimaryLinkTag;
.source "SecondaryLinkTag.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "lk2"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "description"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/htc/text/tag/PrimaryLinkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "lk2"

    return-object v0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/htc/text/tag/PrimaryLinkTag;->toEncodedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
