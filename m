Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD973192B82
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 09:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735811722; cv=none; b=uVfYHIu8oDSf/pIEbMFR9x3TdvhBdqJHUADmKpCQoTbt4TyLASdanor+j1Vlw6oHcIkMkuxpENEz3PBz6wDyJOvToM79SGOVHgH1JFr9HVUsgndsXOh2TjNAiV00Ei/W0c0lJSdvMNIynfyS//svWcQpqQ5HUfZzAeDIr8jDAVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735811722; c=relaxed/simple;
	bh=s2riuupxgVCewiTSQHxKzaEojJaIsgS88NGKvp/a1ng=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Wtq02x/Pq6JPZeCXprcUXEjWHA0Cvi31WwqPL0PcCnUS4yyIIigFIBnh8HpXSO0jxPQ/uKiI+/6w/uWe/jEuPBAOKulqYUSPbjV5/3D1nDT+clCe96iooUl/6OWD9Nr+BqQQlNvjomn9jgK/fkjre4W+ceXxqkiUUmTndvPZp/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1735811722;
	bh=s2riuupxgVCewiTSQHxKzaEojJaIsgS88NGKvp/a1ng=;
	h=Subject:From:To:Date:From;
	b=W446+Myyb5Hs2eRVuYXz8xAVRRCoJ+D2y0gsFru4TAGHQw9kZxVNuouJ4b3M8+be+
	 vS8IBLGEZikCPjUsVNEF1SaCJvEcaNyj/skNqvDc0VZStHL+jAaNzHldiBBS/bR/N0
	 e4z+PFF3gdiS3XY0veq+GgzUCNoOvQkUBSO1SeRE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C636C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 09:55:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF845380A965
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 09:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.69 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Jan 2025 09:55:42 +0000
Message-Id: <20250102095542.release-6.6.69@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.69
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.69.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.69.xz

Linux kernel version 6.6.69 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.69.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.69.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.69.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.69/v6.6.68

