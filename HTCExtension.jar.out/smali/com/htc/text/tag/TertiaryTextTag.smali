.class public Lcom/htc/text/tag/TertiaryTextTag;
.super Lcom/htc/text/tag/PrimaryAutoLinkTag;
.source "TertiaryTextTag.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "t3"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/text/tag/PrimaryAutoLinkTag;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "t3"

    return-object v0
.end method
