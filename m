Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E857A22318
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709297143; cv=none; b=kwGpjlrm5qa/zyqYJSaPTnPGdV/KaTGLHimFGMNVBLPbOvLqH4+6iQEFQAZT0GRSq7yamn4YYZ6nXlG/56XW8K22vEZkW7sLrIhqe8SHsQ0ENL1RYyHI+xdH0ADXlKu4LEho7nQNxaPwNL0Hu90kKHiWrjwR6aU1CsSqRtKjBCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709297143; c=relaxed/simple;
	bh=IOdMDTOVQFEe9L6dmntRzs7FfrPAHeyyV8QViHqnL1M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XlHzeMdEB7kIiFRDdphphKzKky2zB1sQukz9b/EX795UKKPR+MYHQpU1S3ButuAyjrHHKff+hl4zXWPub6viRES2CIp1E797cYqvH7Zcq2KXXsdqafCpOoni+0Zl4M5DDRXAa1zePpgVB9ECqwrnkhEDxjtsS8l/P8coTbDGpMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709297142;
	bh=IOdMDTOVQFEe9L6dmntRzs7FfrPAHeyyV8QViHqnL1M=;
	h=Subject:From:To:Date:From;
	b=F29jcC6EpNQ9MhUurwJ5tIC6dRz2BoqZpZylBftwbyifErwpzpUyyPcMhfikFN10I
	 8OGSvqxzC63Pl6lvVOZ3k/G5fIA4yF4kl78P8iWlhyZjWcbYYs1gXtdOtaRaU41pVe
	 X82QoHlHv5A+JmtJXP97a52fuyCcf/h4OdcCiQm0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF26C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:45:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9562FC595D1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:45:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.80 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Mar 2024 12:45:42 +0000
Message-Id: <20240301124542.release-6.1.80@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.80
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.80.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.80.xz

Linux kernel version 6.1.80 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.80.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.80.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.80.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.80/v6.1.79

