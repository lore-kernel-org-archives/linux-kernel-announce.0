Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AFB3BC68E
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785749474; cv=none; b=qI+7wss+BhJVjTrP12JmH+r7hHQ8GVSxro+HFMv8bdbHGSeqOm53VOF564eX5zQ0fm4323ldK5fDptpzu30ac16CxG3DD8TeTd+TiyrSomdAGj1GK9dP3pOpWFFJHsukCExHQOTi45nx3NCtGzbmMNeuBfE6URYfk/NxcGXXNlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785749474; c=relaxed/simple;
	bh=XwouxBGscOtzb4RRdgTYyGndtaZjuZ+69nBI/CTtfRc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Puj+4J0C+Pl9erhamvsfIWDrubb/H8OIGvaFmKgzgP5rSAShzkNzbMwu8s1PiKgWV4tddumEnEfffiL31M5cOU+LhygFugzcj1JYqn1gxgEgBkWg6kPnCOLkK2qCRvFX3JucAEi5eu5RuWOogEdF2B6ttxyZupwJdmu03b3pacY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785749474;
	bh=XwouxBGscOtzb4RRdgTYyGndtaZjuZ+69nBI/CTtfRc=;
	h=Subject:From:To:Date:From;
	b=V5Us03kGzdkzIbZdylWByEuixzUFbtqiZOXtXBtyNY46f8mjOU9aOtndUNuZMxBaB
	 YqdKjH7KZCdbRvOeuib9XNrXFSyHBjwbrHQLLp0pLMDLqAIF10sJhqYmsIeV5fUD/S
	 1KVsVvajqfbmiuQ9FS4CPt7CY9+pLAk0Q02CVzaY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334DF1F00A3D
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:30:58 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 96692380A942
	for <linux-kernel-announce@vger.kernel.org>; Mon,  3 Aug 2026 09:30:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.101 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 03 Aug 2026 09:30:19 +0000
Message-Id: <20260803093019.release-6.12.101@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.101
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.101.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.101.xz

Linux kernel version 6.12.101 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.101.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.101.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.101.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.101/v6.12.100

