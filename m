Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F093C1991
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779032409; cv=none; b=i2bfKMJNOJ+XvAyZifa8VbUvjzy5WEo7cwz+IoZu+Lm/zvKjUaPLqhh2WkQwyVxjFHlIX4AxZgISaZHzKsdrqrF/HaBbiUkr9PGLRFjLT4/9Mr4Bi3ULnn1zE2QoflKMdCS1fvAvAfGp2xaonMhEMM01sRPoECKz2xbTcD8dgq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779032409; c=relaxed/simple;
	bh=8w1VqpCHvCa6eQnIjxf8zASccUo2GWtwo0IUpt/Q3oA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iVybH0OtcZtYHwZ36iqU/3Fjok8tKX802bYxnU+DkeX6v6Qo15b1BOHEFEvDBQLL5kVOB6bEqeuFgrfS5qu1JWcO5M31lpDUBv6JjRI5kZqn15sZKhAGVRXSGGeH/9EjBMHVw9q1DZWk1NRm16nO0RGiy9p0dYuPZ/TucDNjxKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1779032408;
	bh=8w1VqpCHvCa6eQnIjxf8zASccUo2GWtwo0IUpt/Q3oA=;
	h=Subject:From:To:Date:From;
	b=O2udZJDDC2SFTfLOBFTfUk1hlhHLKuOkdtbS+rym25xQkEuRMis35e6kavWrBuplz
	 Xf3Bph/0q+QeIbxRzKqOOSwFUgGsAuC8jho1npQMqyPAIOpDUw1dVGROmhJrwdqhDI
	 X6be1WfHtIzhhYlvV6R/U3nD9+Ic+bocyKQeHxyM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CCADC2BCF5
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:40:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D35B539308F0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 May 2026 15:40:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.140 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 May 2026 15:40:20 +0000
Message-Id: <20260517154020.release-6.6.140@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.140
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.140.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.140.xz

Linux kernel version 6.6.140 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.140.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.140.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.140.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.140/v6.6.139

