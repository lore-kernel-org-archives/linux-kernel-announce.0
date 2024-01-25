Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D2417744
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706224243; cv=none; b=AZqt3esHwGOaIt33IFcoSQVOAh+tfvEK42bD1p4m4uCNCbCADXXWKAewk2alNkBvrYiN8lTF2mO5Txw9yCfaWtuNRJ7V9UfdLsQ0f1yFv76GAetmmhDCMsnbqRzRGQpR3+YnzOCOGHXucOI2AqPKN6H7MG8yS5BsCtUVJvJyJQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706224243; c=relaxed/simple;
	bh=rnmgWPml0ezDxyCm9Ca5r5llIxxy147edjKDdTkk9d8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GT92zGEV7tPOCyw+IJAwey7OiaNfP2IvWv55Mz0WGjeqpoeP8nTLiCNiVjwzd+RXju1eN9zMMyfF+6YUyKKCQRbO1RjQOhkBAW+u5xUHvWUUJjuvr0kWVF0ftBC5G9d5lw8lqM8f92ug3xxrwHrbO/GLhpPPj9oNW0Lu74XIKRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706224243;
	bh=rnmgWPml0ezDxyCm9Ca5r5llIxxy147edjKDdTkk9d8=;
	h=Subject:From:To:Date:From;
	b=Bmqs5kUX25fb86F6rmkAUXretl0e309ii1y5nNoJiU3yNpkpNaKZUWxbxCbuFy3iW
	 LfUiOypcY96A6uXExJKzXRsGWXnlMbXrHVE0xqsSglrbvgHYVPjpjAjPYYpeJrIk7X
	 QjaC7EofSRhsyryiga1q4Fzp+J5pvORi0TKc8lkQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90009C433F1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:10:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 78229DFF765
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 23:10:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.148 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jan 2024 23:10:42 +0000
Message-Id: <20240125231042.release-5.15.148@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.148
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.148.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.148.xz

Linux kernel version 5.15.148 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.148.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.148.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.148.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.148/v5.15.147

