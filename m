Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D63E16D4EB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718539244; cv=none; b=Vawz11CqnPkK/04vjMUhH710qghonm8HxkiXdPh2ThpEYtZ9euMBrfnG1gQ7Bgsf6F/wbYBDxpCeJy6WvxrBv6NtJMYVS1diljNtmcgD/l07bgGHTapyZy+tJ/cgE5wJAASXr58EW4Lo0B0vb/NlBKvWt/ALfFf134eWwI3kk28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718539244; c=relaxed/simple;
	bh=JNdiVl++o9MiG/MHvH5/TUoCZyRCpzsc9fVGMzJFEiM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ILEWrHCucrHQJNRq+DpFMYKfKLOtxc7QRI5S1uRHZ49JA4pPjZK7H7VaiUhqsrb7yVlbTvLuvkcfrwiJgjpJI+VnA/T3GlFjYNfpRQ5Q8dsW1mUB+UvNryVaTbFc5AQSCLK+qNnyCePmw4c6rMrpNS2tGxvfGBQBFsBwVBXhUWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718539244;
	bh=JNdiVl++o9MiG/MHvH5/TUoCZyRCpzsc9fVGMzJFEiM=;
	h=Subject:From:To:Date:From;
	b=iHLbsiGKFn3kT9UPgwsoLDxYaS4XIHF1taoxpWMRRAgwp2e+NOuB0cxpGSUKu30G+
	 0r9RTds7iqcrEvdT5NYkWnvU2nvUbPpV33TvszJsyB212/tMUx58tMr88SBeQ9F5dw
	 nRSnauqbYJfVvxy54rfZZJCjcVqEvNnd6lIxjAyU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19054C2BBFC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:00:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 0B898C43168
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 12:00:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.161 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 12:00:44 +0000
Message-Id: <20240616120044.release-5.15.161@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.161
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.161.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.161.xz

Linux kernel version 5.15.161 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.161.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.161.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.161.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.161/v5.15.160

