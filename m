Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C376364E9A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787489844; cv=none; b=K7ceRIfAjN3SkM1xB76WNdPwSEAG7Mqq62FlHbIWYLAcHLLGbiAR0uv5vb3ki/EbgMmBxBwJ97/sb6Ehv4kILzJa2fVZ+lSQYgZHYcBNTlewLntqOheaqCx9YfD/8qZHHpfHFSCcXTcovUd6o5xvwyvY7/9kxMQpaQofakHVIlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787489844; c=relaxed/simple;
	bh=QXONlrlMcvXXGDlD+oYCeLlIAXM228Ni2LouVwGTzHk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=h7/6o3qYpa+ZR5c+uzDihpft7z9ENbjjl7P9FJcPy59kg6m3C/CPoWjYTE97YLrDHPpWbpCVAFHv3ZOo2lHVyfqj/5kdOjZau+Ser66syWSXL+fmCBdIt1F/W68YSaCFG0ls/fi+Pnv89txHks0XvU791E6ESqy69oWj19Pz2og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787489844;
	bh=QXONlrlMcvXXGDlD+oYCeLlIAXM228Ni2LouVwGTzHk=;
	h=Subject:From:To:Date:From;
	b=jWCNzCRuSZQqOAVXdAhSXLcx38WD2/+UYnK2v8OruFo6xpTYe5XwKpJgYN11XPz/B
	 BHdHk8PqBf1ih3nnkwkSIfOEMRoLJBaFUEqFXVhhUHXZrQTIz6qplSP/vsjhM7QB1u
	 7FvclVKs8L77X0kJwhOZEWUavUukpHdyXd+4eeVs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C31841F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:57:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 56C18380CFE9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:56:32 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.46 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Aug 2026 12:56:31 +0000
Message-Id: <20260823125631.release-6.18.46@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.46
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.46.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.46.xz

Linux kernel version 6.18.46 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.46.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.46.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.46.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.46/v6.18.45

