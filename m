Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5F5214210
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756392933; cv=none; b=neuETzOyq+tyhhynKUNTbIQ2bI2qPFVw4OwO6WffUIo9EssSohHSuMEGDySiMywt5D2npDrWbKpMpFA3AHIYBKgkFszdSzsy8eyinogUJgmuh4sqqPtFonX/Q/G+axY0dt4x0gNHx1ueQUr/YU92whIYUQugdqda3i14jsZa8ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756392933; c=relaxed/simple;
	bh=gUpQGMT4JBvA5coHYCbFe8IetjUnJlmOE8SCMJSSlu0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Dk/QJOfopzjXnc0kBGluo+Ux3TI5ts4mS4wAt6QBCfWWEt1OJUNYvT8KBQD/2Cz/oOYJ2bESyV2KnC+2JSuxs/RD7pfNJmTMODTjT9KszUqXx3y9WUBkU0N7d6R5dlDcFxStN/2HrPlguoN2tNwYjHFvJEQI0pr0O2ua6VBCkSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756392933;
	bh=gUpQGMT4JBvA5coHYCbFe8IetjUnJlmOE8SCMJSSlu0=;
	h=Subject:From:To:Date:From;
	b=CkI6growsKC8LBnuTuxbCxsInA86rnjn/ivBbuMuGACfGpOOh5EPD46be93Fr1aLx
	 7so1ADUhi4JExXkQzWAeiCrL9QhadrvYOJEE7zU1omzey0GdtT1D6TJsuumHYf5kso
	 l+ezJBAzJc7xEkUDwGzv1RoezmpiyEny/y+KZYaE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDD5DC4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:55:32 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEE5F383BF63
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:55:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.103 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 28 Aug 2025 14:55:39 +0000
Message-Id: <20250828145539.release-6.6.103@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.103
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.103.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.103.xz

Linux kernel version 6.6.103 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.103.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.103.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.103.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.103/v6.6.102

