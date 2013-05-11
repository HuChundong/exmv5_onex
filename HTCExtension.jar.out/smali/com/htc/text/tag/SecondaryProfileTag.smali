.class public Lcom/htc/text/tag/SecondaryProfileTag;
.super Lcom/htc/text/tag/ProfileTag;
.source "SecondaryProfileTag.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_URI:Ljava/lang/String; = "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TYPE:Ljava/lang/String; = "pf2"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "name"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/text/tag/ProfileTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getTagType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "pf2"

    return-object v0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/htc/text/tag/ProfileTag;->toEncodedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
