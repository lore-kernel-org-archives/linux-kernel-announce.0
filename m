Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B00D1B6D08
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Sep 2026 21:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789336762; cv=none; b=irAfQScZOpJJhFoWLBBl6Bxr7p7s9IgugEkaCoDndk9mcjQ5XSWtIOVRUKVf0Sk9tp6Gkt/VWGA3XPoiwdt9m1jpKq1j78Pi/oMBLk3W7JXyB8NW6XM+OJvrt9Il9ZneI8+qa+jYPd7KTyQvil31mwKVshXPy4HPKPs/gwtX0mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789336762; c=relaxed/simple;
	bh=v6IIPB6fjQN8lYFtvFtl79Q78GNBoUG+8QFYOhc4EnA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=p30GK3H5OPGFf/9yV6ge58Gh20F3O4JK3t52uQ2hIf6QvsVi1BXskNg5t8x7QGu8H50W3q6Tt1KNDNh/qTd2fgYJ2Fh45G2FUZMNcevpZXViSyrMlMH087Z2mo/Ud+4/OSJ5JDejatpRv7128NfUtI/vdPwa+wEn+BNKFK7C7iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1789336762;
	bh=v6IIPB6fjQN8lYFtvFtl79Q78GNBoUG+8QFYOhc4EnA=;
	h=Subject:From:To:Date:From;
	b=EAI7hMKVNBn/mco3fqB3uHUVdzKRzxds0Bx4IWojo5gM8uaHqJgthqcYQDZpJeLPg
	 iY3Su3/rryGzHP4+wkP/kDfQyJ5j05X2fyuREzmfJBYmbZK7HYedU/ad0dg/HX0ZbE
	 7O1ykvDdHoiV4rudOXM7TRmibARA04Y8xb02/9xY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49EA31F000FF
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Sep 2026 21:59:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 19A08380AA40
	for <linux-kernel-announce@vger.kernel.org>; Sun, 13 Sep 2026 21:58:18 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.3-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 13 Sep 2026 21:58:16 +0000
Message-Id: <20260913215816.release-7.3-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.3-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.3-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.3-rc3/v7.2

Linux kernel version 7.3-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.3-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.3-rc3/v7.2

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.3-rc3/v7.3-rc2

