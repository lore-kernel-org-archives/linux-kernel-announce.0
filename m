Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2544515687D
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776501962; cv=none; b=aTaGsoKeTnlAXnBkWV4942TPHWMx7pTp+vE+9RDwf8R3HP1T3mUY0dE2SdfyMzqLO4hWGFdYzdTbZibQxk02c7GaYK9N8L/GE0l1/GC0ZuxVwLCEIg9a8QRIOjkjsj+CAg1HAeUCTZY0tfUxBrR3Y4N6GUvKpPPLA71yEEb7LNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776501962; c=relaxed/simple;
	bh=syDdxvXDy3HchF8TvNp7vascyNxbkb5qv+08EFJvIVE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=X5XD4c54PSeEzvazkGpb4zYGnhvvbVubMjzPAnEaa0kMsgLbr+GzUhHArYHkqHVZ6JZZbvWLO5VhCgOSOWYMi+o+z3DHcx0LoCGKEZsW74b7iCzo41pmPqIOxuC5yxsD5eqazhGs/TcVru4hFS/gWummyS+qU88Lu581cS/7RU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776501962;
	bh=syDdxvXDy3HchF8TvNp7vascyNxbkb5qv+08EFJvIVE=;
	h=Subject:From:To:Date:From;
	b=iJj/ut48Ysfxo0PgPim9rJayneVvL3hBCIVk5/nM6dhxwpgmKb+2ltWfnOrIaqel1
	 ULzVK4HDTrU49G7Q10ZJX+nSq5oi1EQWptJSNOt7vJzEJQJnKDfRbDC2gLslWW5wKD
	 Ndz4syA4v0cUGfedsqIilVL5EbXyoGqhHKWi3i8w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBDC4C19424
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:46:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCCE4380CEF3
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 08:45:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.203 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Apr 2026 08:45:28 +0000
Message-Id: <20260418084528.release-5.15.203@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.203
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.203.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.203.xz

Linux kernel version 5.15.203 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.203.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.203.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.203.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.203/v5.15.202

