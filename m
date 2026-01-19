Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28133806A5
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833805; cv=none; b=oT6QOIealazsvS3q2s8VKI52I+VJXgnwTFRKTrveyL+vVQMCcf6Clqfje/FdUZ8xc+4abfIgG0VlCZ/eNqTrWTdK/1UmVo9B8CpGaAzIZ/ChDbtqcJXNAfHY18vb/CWAqMac/EUlxAAMJFbga/QTBHGkgeopKUMcZlv5my1+ruY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833805; c=relaxed/simple;
	bh=Qyy0Pth6JsmoSqjgExbjVSWqvxq3YNBDzjUAV8vdWOY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=O3jrz5nKg3yRcaJoDDTESpoF0YyM8zm4lCWCQi5HP08iAMEAHTT4pCs5m+Md7nT2NgmFXlgcLm+BDIcuBA4GVAYUGc0LQ5gz+8B0QaywB4AuZhD0S8EaWT1HMzR3JtvH0KXE1iXVOCDLLjqIFR9fmHeEsTnaW9oa3nNl9KUR0j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768833805;
	bh=Qyy0Pth6JsmoSqjgExbjVSWqvxq3YNBDzjUAV8vdWOY=;
	h=Subject:From:To:Date:From;
	b=m3VFzA/0OAyrQsolc6j6FCOg4UJNjSiHNaRxVauxSF3f7qfvDnvzqRuEiD+Sjs3Gp
	 rBAnx1B45B6Gbqi+jR48uP2hI7DBHFZ7Rc9UKLXqDRWdllCQ9M85YvpjLMzCN9QntB
	 e1L+zXrcPkUmv7oUNyavWG9AkkAjI2HVvJnWUaMM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74ABFC116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7AEEB3A72A5E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:39:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.248 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Jan 2026 14:39:55 +0000
Message-Id: <20260119143955.release-5.10.248@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.248
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.248.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.248.xz

Linux kernel version 5.10.248 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.248.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.248.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.248.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.248/v5.10.247

