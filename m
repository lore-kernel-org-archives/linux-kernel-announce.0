Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E771D416C
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 12:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725451254; cv=none; b=EJvqgh6G3yxbBRhlx18MrsTwkc/AFVEN1qy1ahstd78xOclR+vYFSD/W+YBoVugtF5wgcXVE89Txi/2GMprNSq4rBa67p7NBlE0hFTGi3PdhljiIDTx/x/d0QmSu1pzq5ze75LP6y96mYA4tZQZCvjbNBIRtfJwzUH2lQpuEMP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725451254; c=relaxed/simple;
	bh=TWZ+NpUhofG0jxSatsE4lyIA1E1LJ6El3JT2wtOpO18=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Hnir2lXK0BQsEu+zdGYOLqeIZl/z0b5DJo/lkyLHtFBIHcqm90X1PiPjWL3DWwv0luEplPzE7sMWmvoqpre1038LNlJ1MDcccpdjkYmABGIeTKzTYRvSKiliaoHACqdDUhAZThYBWZZW83QkFT+aaaMZ80mk/b+uLk3HbFCXq2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725451254;
	bh=TWZ+NpUhofG0jxSatsE4lyIA1E1LJ6El3JT2wtOpO18=;
	h=Subject:From:To:Date:From;
	b=AHzksSaqW5/fXnG4hsYmtAhFXlDXUisunJmwk6E0KGFit8DMN+CpYI58dn43oc6kl
	 LboLKeEXQAjanK/9CpdZw4fDuAO3ql1k9Z1hvZLPXdQwBKixEnd6e72TDZoD3Jc1T4
	 ZNbuF81kedAxe3o25GvOqYfK7VFj8xL3gLDNH9Xk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4941C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 12:00:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 797A13806651
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 12:00:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Sep 2024 12:00:53 +0000
Message-Id: <20240904120053.release-6.10.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.8.xz

Linux kernel version 6.10.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.8/v6.10.7

