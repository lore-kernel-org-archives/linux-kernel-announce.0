Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07FE2DE70D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787834502; cv=none; b=edQ+/p7cjQ74EmALFNKj84TxgpHKl4w5aXNlnSqAcdC5R4zAYemNvZ6tujlMwjf7qQPHCWYfQtsYkNbClQNxnbtLID23WIt49aY05g76zmwoyEZccvUUrm+Mii92+wjcVFeaFXdBkBZ1acCt0fLutuYAR7OE7Eo0W4dPybfRRXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787834502; c=relaxed/simple;
	bh=RAyixzWEPMTs5ozYo2CXueh+QwZnN3Y9KSfMMr4fhU4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gqqGAxW0rLC7jf2ZWU09uJVp/NBr31n3slzxlHOqm+5LqHxEspPPrwlg/EqnbpEwcXk2AZF6MueTrnkj8qvJ36fGxkLg8YI1s6mWod0LfSDaTo6YKicUVvvqJrz4EVjhMEhcjJvq2BJEI5YXiqX3TzJfQhm3eVEKnp1ksfJt2Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787834502;
	bh=RAyixzWEPMTs5ozYo2CXueh+QwZnN3Y9KSfMMr4fhU4=;
	h=Subject:From:To:Date:From;
	b=S9FxBbc+pIh4CaCjT2xbKT42btObeg5lU6sHbag2YBVWIa3Oo0wJh38ulQKjF0t1O
	 wdVBxNMcplyRZ1qsFHnEuHNn42liPD4Uoi+5IgbDn0Uu0wEtyzCyFcxsNWsiK/LBSH
	 9iPcEhWZNeawogGVdk9mT4ATS8Fhc9WcRj4FHwC8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45B041F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:41:41 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C39D3809A24
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:40:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.218 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 12:40:46 +0000
Message-Id: <20260827124046.release-5.15.218@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.218
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.218.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.218.xz

Linux kernel version 5.15.218 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.218.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.218.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.218.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.218/v5.15.217

