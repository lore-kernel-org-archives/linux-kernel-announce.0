Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADF34E36CB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 13:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792069829; cv=none; b=aODV5mnIXGrorgE8zOZNb8iWVnZ5TrZpWi/ADwNjtNJEgNgjR6/wf+1yhPZl/YxadiQtO1NBsbAr1biDydSnk2+jgaNOLgOrPsqIGCaZvpAOpSpzxWUEAZaWAXs1BcnLPWEzq5rJ7MEwZQV3X5IXH+Qtp1FCHVUax9PhiXFG9Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792069829; c=relaxed/simple;
	bh=bswDXv6Jp/jeSfTL96U0cV14swRyQo77bWXPu3jgSKg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=jXAQn89hxljx5G63PnwxbTl+2ummyXBuyydzE8GLb0H8IeRdyC0YdNgvXtHF2gGSozoi8isjrcfflC2q1GPkMAD2XhWE2ToE92LXp0jOCjTz4jJN1CcennWS6O0ERfz6R+FBbJDZ4ti3O0UkYSfnKMXXe6MUvmltngJFvaOs4AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1792069829;
	bh=bswDXv6Jp/jeSfTL96U0cV14swRyQo77bWXPu3jgSKg=;
	h=Subject:From:To:Date:From;
	b=MQ1C4lxXl0tuae870PIHVmrF8pwlR5tDqMiDxld4K/P23tcNHMfTK6PiVH7QzOrrJ
	 mTK71QYJyfe4tbQfM66EnhBDpMLvFumkWKyvyvkoIivKtp2RFF0UqIqjbyxhgj+yTd
	 jrbGdq6HEbeA4j5CXJhKmS1CqCru2efYL22neIKo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA72A1F000C4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 13:10:27 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B70DE392EA77
	for <linux-kernel-announce@vger.kernel.org>; Thu, 15 Oct 2026 13:10:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.272 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 15 Oct 2026 13:10:26 +0000
Message-Id: <20261015131026.release-5.10.272@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.272
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.272.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.272.xz

Linux kernel version 5.10.272 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.272.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.272.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.272.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.272/v5.10.271

