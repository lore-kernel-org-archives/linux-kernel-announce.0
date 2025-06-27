Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8E12BDC11
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751019621; cv=none; b=gLLO1NrfngndEN313vq3lE5z/RhB48zYtP/I1EfqtZBqzll1Yx0ZtuwbOyi8awgtSBuHNpdyoav+N9bQ8sz3MSYCwuyjAt131VgulN0mu0RU0IH0ale1WCyltNkObcyMDXiDuCuxc6zr8OECHB1evVG1Hl6Rz2bPpCivC7s/QbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751019621; c=relaxed/simple;
	bh=LGnRmqe13qwPqgz7jNrZvuaBrDrEsrBo/6iA4cs/zIU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XSanM7sQEFcXt9Pa6uI8mvuAP6o06Pr91Rs9t94eifzwwjiW06EeZQlcp5nD7CDfwrFpN2iPMWm2Dyo+OEOp2hsHSbe5WMFT25RLp4fefSocyswDwnKnWG3QjqRddGpY6LeifNImKr1SPyx3MhNyPZ6q+5TwAyT2j6lm8alNou0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1751019621;
	bh=LGnRmqe13qwPqgz7jNrZvuaBrDrEsrBo/6iA4cs/zIU=;
	h=Subject:From:To:Date:From;
	b=I+Zj9j4lcTXgou5ulWJp+6MUynlClo33qBEz9cCzMUed592LFjFZkXMPoQSH/Nm1N
	 JwPM8Nwc+LgCRzBpUxrEKGFy0ufQLljTPH0ZB0mqlSUyRq30xPFhU3RL0QUjvStxJA
	 8L+kIe7msG9h+msEKLhZsDomxS8MAjE0R0d1yU1c=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95274C4CEE3
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:20:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAD333A40FDC
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Jun 2025 10:20:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.295 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Jun 2025 10:20:46 +0000
Message-Id: <20250627102046.release-5.4.295@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.295
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.295.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.295.xz

Linux kernel version 5.4.295 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.295.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.295.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.295.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.295/v5.4.294

